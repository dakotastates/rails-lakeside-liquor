
const select = (el, all = false) => {
  el = el.trim()
  if (all) {
    return [...document.querySelectorAll(el)]
  } else {
    return document.querySelector(el)
  }
}

const on = (type, el, listener, all = false) => {
  let selectEl = select(el, all)
  if (selectEl) {
    if (all) {
      selectEl.forEach(e => e.addEventListener(type, listener))
    } else {
      selectEl.addEventListener(type, listener)
    }
  }
}

document.addEventListener('turbolinks:load', () => {
  let productContainer = select('.product-container');

  if (productContainer) {
    let productIsotope = new Isotope(productContainer, {
      itemSelector: '.product-item',
      layoutMode: 'fitRows'
    });

    let productFilters = select('#product-flters li', true);
    on('click', '#product-flters li', function(e) {
      e.preventDefault();

      productFilters.forEach(function(el) {
        el.classList.remove('active');
      });
      this.classList.add('active');
      productIsotope.arrange({

        filter: this.getAttribute('data-filter')

      });

    }, true);

  }

});
