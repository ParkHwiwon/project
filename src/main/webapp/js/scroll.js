$(document).ready(function() {
    $('#myContainer').multiscroll({
        sectionsColor: ['#ffffff', '#ffffff', '#ffffff', '#ffffff', '#ffffff'],
        anchors: ['first', 'second', 'third', 'fourth', 'fifth'],
        navigation: true,
        navigationTooltips: ['One', 'Two', 'Three', 'four', 'five'],
        loopBottom: true,
        loopTop: true
    });
});