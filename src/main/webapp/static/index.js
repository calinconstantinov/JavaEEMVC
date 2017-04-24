//select the HTML elements
var form = document.querySelector('.form');
var firstName = document.querySelector('input[name="firstName"]');
var lastName = document.querySelector('input[name="lastName"]');
var telephoneNo = document.querySelector('input[name="telephoneNo"]');
var sum = document.querySelector('input[name="sum"]');
var submit = document.querySelector('input[name="submit"]');

//select numeric fields and set random value between 1 and 10
var no1 = document.querySelector('input[name="no1"]');
no1.value = Math.floor((Math.random() * 10) + 1);

var no2 = document.querySelector('input[name="no2"]');
no2.value = Math.floor((Math.random() * 10) + 1);

submit.addEventListener('click', function (e) {
  //override default form submit behaviour
  e.preventDefault();

  //check if firstName has between 5 and 50 characters
  if (firstName.value.length < 5 || firstName.value.length > 50) {
    alert('First name is invalid');
    return;
  }

  //check if lastName has between 5 and 50 characters
  if (lastName.value.length < 5 || lastName.value.length > 50) {
    alert('Last name is invalid');
    return;
  }

  //regexp telephoneNo number validation
  if (!telephoneNo.value.match(/^\+?[0-9]{7,12}$/)) {
    alert('Telephone number is invalid');
    return;
  }

  // check if input sum is correct
  if (parseInt(no1.value) + parseInt(no2.value) !== parseInt(sum.value)) {
    alert('Sum is not correct');
    return;
  }

  alert('All inputs are correct!');
  form.submit();
});
