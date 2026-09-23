-- Cria o banco de dados "database.db" --

-- 1) Apaga a tabela (only in devtime)
DROP TABLE IF EXISTS thing;

-- 2) Cria a tabela "profile" --
CREATE TABLE thing (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
	created_at TEXT DEFAULT CURRENT_TIMESTAMP,
	name TEXT,
	description TEXT,
	location TEXT,
	photo TEXT,
	status TEXT CHECK (status IN ('on', 'off', 'del')) DEFAULT 'on'
);

-- 3) Cadastra alguns "profile" para experimentos iniciais --
INSERT INTO thing
( name, description, location, photo ) VALUES
( "Bandeirinhass", "Uma coisa que se acha por aí no período das festas juninas.", "Lá mesmo", "https://picsum.photos/400/300?random=1" ),
( "Joia", "Pedaço de alguma coisa, não se sabe de quê, mas é de origem terráquea.", "Encaixotado", "https://picsum.photos/400/300?random=2" ),
( "Nurff", "No melhor estilo 'arma infernal', mas não funciona mais. Se é que já funcionou.", "Bem perto", "https://picsum.photos/400/300?random=3" ),
( "Sapato", "Usava quando era pequeno e não entendia pra que servia. Ainda não entendo.", "Por ai", "https://picsum.photos/400/300?random=4" );
