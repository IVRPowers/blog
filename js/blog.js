var ajaxContainer = document.getElementById('ajax-container');
var observer = new MutationObserver(function (mutations) {
    mutations.forEach(function (mutation) {
        Prism.highlightAll();
    });
});
observer.observe(ajaxContainer, { childList: true });