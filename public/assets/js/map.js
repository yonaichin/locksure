var map;
jQuery(document).ready(function(){

    map = new GMaps({
        div: '#map',
        lat: 24.984672,
        lng: 121.539857,
        zoom:16
    });
    map.addMarker({
        lat: 24.984672,
        lng: 121.539857,
        title: 'Address',
        infoWindow: {
            content: '<h5 class="title">今湛</h5><p><span class="region">8F, No.207, Sec.3, Beixin Rd., New Taipei City</span><br><span class="postal-code">231-43</span><br><span class="country-name">Taiwan</span></p>'
        }

    });

});
