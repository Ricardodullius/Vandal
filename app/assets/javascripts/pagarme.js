$(document).ready(function() { // quando o jQuery estiver carregado...
    PagarMe.encryption_key = "ek_test_Ec8KhxISQ1tug1b8bCGxC2nXfxqRmk";

    var form = $("#new_order");

    form.submit(function(event) { // quando o form for enviado...
        // inicializa um objeto de cartão de crédito e completa
        // com os dados do form
        var creditCard = new PagarMe.creditCard();
        creditCard.cardHolderName = $("#new_order #card_holder_name").val();
        creditCard.cardExpirationMonth = $("#new_order #card_expiration_month").val();
        creditCard.cardExpirationYear = $("#new_order #card_expiration_year").val();
        creditCard.cardNumber = $("#new_order #card_number").val();
        creditCard.cardCVV = $("#new_order #card_cvv").val();

        // pega os erros de validação nos campos do form
        var fieldErrors = creditCard.fieldErrors();

        //Verifica se há erros
        var hasErrors = false;
        for(var field in fieldErrors) { hasErrors = true; break; }

        if(hasErrors) {
            // realiza o tratamento de errors
            alert(fieldErrors);
        } else {
            // se não há erros, gera o card_hash...
            creditCard.generateHash(function(cardHash) {
                // ...coloca-o no form...
                form.append($('#new_order').val(cardHash));
                // e envia o form
                form.get(0).submit();
            });
        }

        return false;
    });
});