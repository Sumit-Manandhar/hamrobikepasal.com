/* Google Map Selector
* Created: Jan 18th, 2011 by DynamicDrive.com. This notice must stay intact for usage 
* Author: Dynamic Drive at http://www.dynamicdrive.com/
* Visit http://www.dynamicdrive.com/ for full source code
*/


var googlemapselector = {

	selectaddr: function ($addrdiv, $li, $mapiframe) { /*selects an address by adding CSS class "selected" to LI in question, plus load map inside iframe*/
		if ($addrdiv.data('$lastselectedli'))
			$addrdiv.data('$lastselectedli').removeClass('selected')
		$li.addClass('selected')
		window.frames[$mapiframe.attr('name')].location.replace($li.data('addr')) //load map address inside IFRAME
		$mapiframe.data('$largemaplink').attr('href', $li.data('addr').replace('&output=embed', '')) //change "larger map" link to selected address's URL, but without '&output=embed' suffix
		$addrdiv.data('$lastselectedli', $li)
	},

	init: function (addrwrapper, mapwrapper, persist) {
		jQuery(function ($) { //on document.ready
			var $mapdiv = $('#' + mapwrapper)
			var $mapiframe = $mapdiv.find('iframe:eq(0)')
			var $addrdiv = $('#' + addrwrapper)
			var $lis = $addrdiv.find('ul.location:eq(0)').find('li')
			var mapiframetarget = $mapiframe.attr('name')
			var $largemaplink = $mapdiv.find('a.largermap') //ref link with class="largermap"
			$mapiframe.data('$largemaplink', $largemaplink) //remember ref to largermap link
			$lis.each(function () {
				var $li = $(this)
				var $address = $li.find('a[href^="http://maps.google.com"]') //find Google map links within LI
				$address.each(function () {
					var $addr = $(this)
					$addr.attr({ href: this.getAttribute('href') + '&output=embed', target: mapiframetarget }) //add '&output=embed' to Google map link plus target attribute
					$addr.click(function (e) {
						googlemapselector.selectaddr($addrdiv, $li, $mapiframe) //load Google map
						e.preventDefault()
					})
				})
				$li.data('addr', $address.eq(0).attr('href'))
				if ($li.hasClass('selected')) {
					googlemapselector.selectaddr($addrdiv, $li, $mapiframe) //load Google map
					$addrdiv.data('$lastselectedli', $li) //remember last selected LI
					return
				}
			})
		})
	}
}

//parameters: 1) ID of DIV containing address UL, 2) ID of column containing Google map IFRAME:
googlemapselector.init('addrcolumn', 'mapcolumn')