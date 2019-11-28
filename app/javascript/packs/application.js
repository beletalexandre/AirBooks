import "bootstrap";
import { initAutocomplete } from '../plugins/init_autocomplete.js';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

initAutocomplete()

$(document).ready(function () {


    setTimeout(function () {
        $('.fly-in-text').removeClass('hidden')
    }, 500)
    $('.contain-id').animate({
        opacity: 1
    }, 6000)


    setTimeout(function () {
        $('.fly-in-text li').eq(3).css('color', '#da541d');
    }, 2500)
    setTimeout(function () {
        $('.webdev').animate({
            top: '60%',
            opacity: 1
        }, 1600)
    }, 2500)


    setTimeout(function () {
        $('.gobtn').animate({
            opacity : 1
        },1000)

    },5000)


})
