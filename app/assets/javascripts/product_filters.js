// Located at app/javascript/utils/product_filters.js

// Store the DOM element embedding the list
const productsList = document.getElementById('products-list');

// Wrap our fetch() method in a function we can call whenever we want
const filterProducts = (category) => {
    // Store our controller endpoint for clarity
    let categoryParams = `?category=${category}`;
    let actionUrl = 'admin_products' + categoryParams;

    fetch(actionUrl, {
        method: 'GET',
        headers: {
            'X-CSRF-Token':     document.getElementsByName('csrf-token')[0].getAttribute('content'),
            'X-Requested-With': 'XMLHttpRequest',
            'Content-Type':     'application/html',
            'Accept':           'application/html'
        },
        credentials: 'same-origin'
    }).then((response) => {
        if (response.status == 200) {
            response.text().then((content) => {
                productsList.innerHTML = content;
            })
        }
    });
}

// Store all filter-type elements
const sellFilter = document.getElementById('sell-filter');
const buyFilter = document.getElementById('sell-filter');
const changeFilter = document.getElementById('change-filter');

// Trigger filterProducts when users click on a filter button
sellFilter.onclick = () => { filterProducts(':sell'); }
buyFilter.onclick = () => { filterProducts(':buy'); }
changeFilter.onclick = () => { filterProducts(':11change'); }