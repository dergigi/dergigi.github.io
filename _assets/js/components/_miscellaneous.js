// ----------------------------------------------
// Imports
// ----------------------------------------------
import $ from 'jquery';

// ----------------------------------------------
// Flex Vid
// ----------------------------------------------
const miscFlexVid = () => {
  const iframeArr = $('.post__content iframe');

  iframeArr.each((idx, iframe) => {
    $(iframe).wrap('<div class="flex-vid"></div>');
  });
};

// ----------------------------------------------
// Zoom
// ----------------------------------------------
const miscZoom = () => {
  const imgArr = $('.post__content img');

  imgArr.each((idx, img) => {
    if (img.src.indexOf('full') === -1) {
      $(img).attr('data-action', 'zoom');
    }
  });
};

// ----------------------------------------------
// Exports
// ----------------------------------------------
module.exports = {
  miscFlexVid,
  miscZoom
};
