# IoT_cap_10
# Integrantes
> Luz Pilco Pancca 

> Erika Sejje Condori

# Ejecucion

## Creating a Database

![db](https://github.com/esejjec/IoT_Cap10/blob/main/img/figure0.png?raw=true)

## Building the Flow Sequence

![sq](https://github.com/esejjec/IoT_Cap10/blob/main/img/figure10.png?raw=true)

> // Search rules
msg.topic = "SELECT * FROM ruleEngine" +
	" WHERE" +
	" ('" + msg.topic + "' LIKE topicPattern)" +
	" AND" +
	" ('" + msg.payload + "' LIKE payloadPattern)" +
	" AND active=1";
return msg;

> // Call webhook
if(msg.payload.length !== 0)
{
	for(var i = 0; i < msg.payload.length; i++)
	{
		msg.method = msg.payload[i].method;
		msg.url = msg.payload[i].webHook;
		node.send([msg]);
	}
}


HTTP request node configuration

![sq1](https://github.com/esejjec/IoT_Cap10/blob/main/img/figure5png?raw=true)

## esting the Rule Engine

![sq1](https://github.com/esejjec/IoT_Cap10/blob/main/img/figure4ng?raw=true)

![sq1](https://github.com/esejjec/IoT_Cap10/blob/main/img/figure3ng?raw=true)

![sq1](https://github.com/esejjec/IoT_Cap10/blob/main/img/figure1.png?raw=true)
