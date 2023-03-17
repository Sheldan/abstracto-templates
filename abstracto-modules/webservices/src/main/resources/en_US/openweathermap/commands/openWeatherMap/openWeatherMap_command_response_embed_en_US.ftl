{
    "embeds": [
        {
            "color" : {
                "r": ${embedColor.red},
                "g": ${embedColor.green},
                "b": ${embedColor.blue}
            },
            <#assign weatherMap = { "Rain": "🌧️", "Clouds": "☁️", "Mist": "🌁", "Fog": "🌫️", "Sand": "⏳", "Dust": "⏳", "Thunderstorm": "⛈️", "Snow": "🌨️", "Clear": "☀️"}>
            <#assign locationName=locationName>
            <#assign countryKey=countryKey>
            <#assign weatherIcon>${weatherMap[mainWeather]!""}</#assign>
            <#assign weatherKey=mainWeather!"">
            <#assign weatherDescription=description!"">
            "description": "<@safe_include "openWeatherMap_command_response_description"/>",
            "fields": [
                <#if temperature??>
                {
                    <#assign displayTemperaturRange=maxTemperature!=minTemperature>
                    "name": "<@safe_include "openWeatherMap_command_response_field_temperature_field_title"/>",
                    "value": "<@safe_include "openWeatherMap_command_response_field_temperature_field_value"/>",
                    "inline": "true"
                },
                {
                    "name": "<@safe_include "openWeatherMap_command_response_field_temperature_feels_like_field_title"/>",
                    "value": "${feelsLikeTemperature}°C",
                    "inline": "true"
                }
                </#if>
                <#if humidity??>
                <#if temperature??>,</#if>
                {
                    "name": "<@safe_include "openWeatherMap_command_response_field_humidity_field_title"/>",
                    "value": "${humidity}%",
                    "inline": "true"
                }
                </#if>
            ]
        }
    ]
}