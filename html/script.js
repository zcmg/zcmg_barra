var doDisplay = false;
    $(function(){
        window.onload = (e) => { 
            window.addEventListener('message', (event) => {	            
                var item = event.data;
                if (item !== undefined && item.type === "ui") {		            
                    if (item.display === true) {
                        doDisplay = true
                        $("#barra").show();
                        var start = new Date();
                        var maxTime = item.time;
                        var text = item.text;
                        var timeoutVal = Math.floor(maxTime/100);
                        animateUpdate();

                        $('#barra_texto').text(text);

                        function updateProgress(percentage) {
                            $('#barra_interior').css("width", percentage + "%");
                        }

                        function animateUpdate() {
                            var now = new Date();
                            var timeDiff = now.getTime() - start.getTime();
                            var perc = Math.round((timeDiff/maxTime)*100);

                            if (perc <= 100 && doDisplay === true) {
                                updateProgress(perc);
                                setTimeout(animateUpdate, timeoutVal);
                            }else{
                                $("#barra").hide();
                            }
                        }
                    } else {
                        doDisplay = false;
                        $("#barra").hide();
                    }
                }
            });
        };
    }
);