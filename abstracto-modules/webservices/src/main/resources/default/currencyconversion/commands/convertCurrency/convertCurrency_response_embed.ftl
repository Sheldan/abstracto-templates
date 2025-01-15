{
    "embeds": [
        {
            <#assign sourceValue=sourceValue>
            <#assign sourceCurrency=sourceCurrency.code>
            <#assign targetValue=targetValue>
            <#assign targetCurrency=targetCurrency.code>
            "description": "<@safe_include "convertCurrency_response_text"/>"
        }
    ]
}