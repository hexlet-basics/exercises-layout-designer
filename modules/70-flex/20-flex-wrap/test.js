const { test } = require('tests');

test(({ query, expect }) => {
  const flexContainer = document.querySelectorAll('.qa');

  const style = getComputedStyle(flexContainer);
  expect(style).to.have.property('display', 'flex');
  expect(style).to.have.property('flex-wrap', 'wrap');
});
