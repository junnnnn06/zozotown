jQuery(function($) {
    $('.bg-slider').bgSwitcher({
        images: ['https://s3-ap-northeast-1.amazonaws.com/zozotown/uploads/item/image/adva6.jpg','https://s3-ap-northeast-1.amazonaws.com/zozotown/uploads/item/image/adva8.jpg','https://s3-ap-northeast-1.amazonaws.com/zozotown/uploads/item/image/adva10.jpg','https://s3-ap-northeast-1.amazonaws.com/zozotown/uploads/item/image/adva11.jpg','https://s3-ap-northeast-1.amazonaws.com/zozotown/uploads/item/image/adva12.jpg','https://s3-ap-northeast-1.amazonaws.com/zozotown/uploads/item/image/adva13.jpg','https://s3-ap-northeast-1.amazonaws.com/zozotown/uploads/item/image/adva14.jpg'],
        interval: 3000,
        effect: "drop",
        loop: true
    });
});
