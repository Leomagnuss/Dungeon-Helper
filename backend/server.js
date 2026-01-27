// backend/server.js
require('dotenv').config();
const express = require('express');
const cors = require('cors');
const { Pool } = require('pg');

const app = express();
const PORT = process.env.PORT || 3001;

// Middleware
app.use(cors());
app.use(express.json());

// Подключение к БД
const pool = new Pool({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  database: process.env.DB_NAME,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
});

// Проверка подключения
pool.query('SELECT NOW()', (err) => {
  if (err) {
    console.error('❌ Не удалось подключиться к БД:', err.message);
  } else {
    console.log('✅ Подключение к PostgreSQL установлено');
  }
});

// Эндпоинт: получить всех NPC с расшифровкой
app.get('/api/npc', async (req, res) => {
  try {
    const query = `
      SELECT 
        n.npc_id,
        n.name,
        r.race_name AS race,
        c.class_name AS class,
        w.worldview_name AS worldview,
        s.sociability_name AS sociability,
        st.staterelations_name AS staterelations,
        b.background_name AS background,
        n.gender,
        n.age_count,
        n.wealth,
        n.occupation,
        n.towns,
        n.isalive,
        n.seeplayers
      FROM public.npc n
      LEFT JOIN public.racetab r ON n.race = r.race_id
      LEFT JOIN public.classtab c ON n.class = c.class_id
      LEFT JOIN public.worldviewtab w ON n.worldview = w.worldview_id
      LEFT JOIN public.sociabilitytab s ON n.sociability = s.sociability_id
      LEFT JOIN public.staterelationstab st ON n.staterelations = st.staterelations_id
      LEFT JOIN public.backgroundtab b ON n.background = b.background_id
      ORDER BY n.name;
    `;

    const result = await pool.query(query);
    res.json(result.rows);
  } catch (err) {
    console.error('Ошибка SQL:', err.message);
    res.status(500).json({ error: 'Ошибка при получении данных' });
  }
});

// Главный эндпоинт
app.get('/api', (req, res) => {
  res.json({ message: 'API справочника NPC для D&D' });
});

// Запуск сервера
app.listen(PORT, () => {
  console.log(`🚀 Сервер запущен на http://localhost:${PORT}`);
  console.log(`📄 Данные NPC: http://localhost:${PORT}/api/npc`);
});