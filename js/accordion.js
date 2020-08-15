function accordion_toggle(caller) {
    var isNowActive = caller.classList.toggle("active");
    var panel = caller.nextElementSibling;
    if (panel.classList.contains("accordion-panel")){
        if(isNowActive) {
            panel.style.maxHeight = panel.scrollHeight + "px";
        } else {
            panel.style.maxHeight = null;
        }
    }
}
