/* Toggle card body*/
function toggleCardBody(elementId) {
    
    let cardHeader = document.getElementById(elementId)
    
    let cardBody = cardHeader
        .parentElement
        .parentElement
        .getElementsByClassName("d-flex")[0]
        
    const currentDisplay = cardBody.style.display
    
    if (currentDisplay === 'none') {
        cardBody.style.setProperty('display', '', 'important')
    } else {
        cardBody.style.setProperty('display', 'none', 'important')
    }
    
    return cardBody.style.display
}

function listenForCardBodyToggle(el) {
    el.addEventListener('click', () => toggleCardBody(el.id))
}


function cardBodyGlobalListener() {
    const cardHeaderToggles = document.getElementsByClassName('card-header-toggle')
    cardHeaderToggles.forEach(listenForCardBodyToggle)
    console.log("working?")
}

/*
window.addEventListener('load', (event) => {
    window.onload = (event) => {
        cardBodyGlobalListener()
    };
});
*/

document.addEventListener('load', (event) => {
    cardBodyGlobalListener()
})

$(document).on('shiny:connected', function(event) {
    cardBodyGlobalListener()
});

Shiny.addCustomMessageHandler(
    type = 'send-notice', function(message) {
        cardBodyGlobalListener()
    });
