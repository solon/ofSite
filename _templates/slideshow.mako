<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
 	<script type="text/javascript" src="http://cloud.github.com/downloads/malsup/cycle/jquery.cycle.all.latest.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$('#myslides').cycle({
			speed: 1100,
			timeout: 2000
		});
	});
	</script>


  </head>
  <body>
    <div id="content">
      ${self.header()}
      <div id="body-wrap" class="${self.section()}">
      		<div class="page-left-wide">
                <%self:filter chain="markdown_template">
                  ${next.body()}
                </%self:filter>
            </div>
      </div>
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>
