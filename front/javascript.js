const form = document.querySelector('.form')

form.addEventListener('submit', function(event) {
  event.preventDefault();
  const who = document.getElementById('who');
  const localisation = document.getElementById('localisation');
  const max_distance = document.getElementById('max_distance');
  const price_range = document.getElementById('price_range');
  const attendees = document.getElementById('attendees');
  const url = ' https://lizyapi.herokuapp.com/api_lizy'
  const object = {
    who: `${who.value}`,
    localisation: `${localisation.value}`,
    max_distance: `${max_distance.value}`,
    price_range: `${price_range.value}`
  }
  const output = JSON.stringify(object)
  fetch(url, {method: 'post', body: output})
  .then(function(response) {
    return response.json();
  })
  .then(function(data) {
    const result = data['result'].filter (x => x)
    console.log(result)
    const answer = document.getElementById('answer')
    answer.innerHTML = "";
    result.slice(0, 10).forEach(x => answer.insertAdjacentHTML('beforeend', `<li>${x['name']}   -   ${x['cuisine'].map(x => x.name)}   -   ${x['distance_string']}   -   ${x['price_level']} </li>`))
    answer.classList.remove('hidden')
  })
});

