document.addEventListener('DOMContentLoaded', () => {
  const appDiv = document.getElementById('app');

  fetch('http://localhost:3001/api/npc')
    .then(response => response.json())
    .then(npcs => {
      if (npcs.length === 0) {
        appDiv.innerHTML = '<p>Нет данных</p>';
        return;
      }

      let tableHTML = `
        <table>
          <thead>
            <tr>
              <th>Имя</th>
              <th>Раса</th>
              <th>Класс</th>
              <th>Город</th>
            </tr>
          </thead>
          <tbody>
      `;

      npcs.forEach(npc => {
        tableHTML += `
          <tr>
            <td>${npc.name || '—'}</td>
            <td>${npc.race || '—'}</td>
            <td>${npc.class || '—'}</td>
            <td>${npc.towns || '—'}</td>
          </tr>
        `;
      });

      tableHTML += `
          </tbody>
        </table>
      `;

      appDiv.innerHTML = tableHTML;
    })
    .catch(error => {
      console.error('Ошибка:', error);
      appDiv.innerHTML = '<p style="color:red">Не удалось загрузить данные. Проверь, запущен ли сервер.</p>';
    });
});