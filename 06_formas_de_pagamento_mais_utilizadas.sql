SELECT payment_type AS 'formas_pagamento', 	COUNT(payment_type) AS 'quantidade'
FROM pagamentos
GROUP BY payment_type
ORDER BY quantidade DESC;