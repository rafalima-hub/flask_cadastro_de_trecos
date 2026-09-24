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
( "Blush", "Deixa a pele coradinha como se você tivesse acabado de voltar para praia.", "Lá mesmo", "https://picsum.photos/400/300?random=1" ),
( "Gloss", "Ao passar nos lábios ele fica com um efeito glow perfeito.", "Encaixotado", "https://picsum.photos/400/300?random=2" ),
( "Delineador", "Com ele você pode usar sua criatividade para transformar o seu olhar.", "Bem perto", "https://picsum.photos/400/300?random=3" ),
( "Rímel", "Quanto mais vezes você passar nos seus cílos, mais volumoso ele irá ficar.", " Por ai " , " https://picsum.photos/400/300?random=4 ");