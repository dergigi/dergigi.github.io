// ----------------------------------------------
// Imports
// ----------------------------------------------
import $ from 'jquery';
import AOS from 'aos';
import './vendor/_transition.js';
import './vendor/_zoom.js';
import InfiniteScroll from './components/_infiniteScroll.js';
import { miscFlexVid, miscZoom, miscSocialShare } from './components/_miscellaneous.js';
import PageTransition from './components/_pageTransition.js';
import Popup from './components/_popup.js';

// ----------------------------------------------
// Inits
// ----------------------------------------------
$(() => {

  // Inits
  AOS.init({
    duration: 600,
    easing: 'ease-in-out',
    once: true
  });
  PageTransition.init();

  if ($('.posts').length && $('.posts__next').length) {
    InfiniteScroll.init();
  }

  if ($('#markdown').length) {
    miscFlexVid();
    miscZoom();
    miscSocialShare();
  }

  if ($('#form').length) {
    Popup.init();
  }

});
