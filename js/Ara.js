$(function() {
	//Função para smooth scroll
	$('a').not('.semSmooth').click(function(){
		$('html, body').animate({
			scrollTop: $( $(this).attr('href') ).offset().top - 80
		}, 500);
		return false;
	});

	//Mascara Jquery
	$("#foneContato").mask("(99) 9999-9999");

	//Regras de validação dos campos do form
    $("#formContato").validate({ //usa o name dos campos do form
		ignore:'',
        rules: {
            emailContato:{required: true, email:true},
            nomeContato:{required: true, minlength: 4},
			subjectContato:{required: true},
            foneContato:{required: true},
			msgContato:{required: true}
        },

        messages: {
        	emailContato:{required: "Informe o email", email:"Email inválido"},
        	nomeContato:{required: "*Informe o nome",
               minlength:"*É nome, animal não é apelido não menos 4 caracteres"},
			subjectContato:{required: "*Escolhe alguma opção brother, assim tu não coopera"},
            foneContato:{required: "*Manda o numero ai pra gente conversar no Whats"},
            msgContato:{required:"*Digite alguma coisa ai mano, qual foi..."}
        },

		errorPlacement: function ($erroFormContato, $element) {
            var nome = $element.attr("name");
            $("#erro_" + nome).append($erroFormContato);
        }

    });

    //Limpar campos de um form quando o usuário clicar no botão Limpar
    $(".btlimpar").click(function(){
    	$('#formContato').each (function(){
    		  this.reset();
    	});
		$("span").html("");
    });
})

//Graficos dashboard

var randomScalingFactor = function() {
		return Math.round(Math.random() * 1000);
};

var config = {
		type: 'doughnut',
		data: {
				datasets: [{
						data: [
								randomScalingFactor(),
								randomScalingFactor(),
						],
						backgroundColor: [
								window.chartColors.blue,
								window.chartColors.red,
						],
						label: 'Dataset 1'
				}],
				labels: [
						"Usuários Registrados",
						"Usuários sem registro",
				]
		},
		options: {
				responsive: true,
				legend: {
						position: 'top',
				},
				title: {
						display: true,
						text: 'Acessos'
				},
				animation: {
						animateScale: true,
						animateRotate: true
				}
		}
};
window.onload = function() {
		var ctx = document.getElementById("hours").getContext("2d");
		window.myDoughnut = new Chart(ctx, config);
};
