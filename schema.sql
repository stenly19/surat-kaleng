-- CREATE TABLE pengguna (
--     id INTEGER PRIMARY KEY NOT NULL,
--     nama TEXT UNIQUE NOT NULL,
--     hash TEXT NOT NULL
-- );

CREATE TABLE surat (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    penerima INTEGER NOT NULL,
    pesan TEXT NOT NULL,
    tanggal TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (penerima) REFERENCES pengguna(id)
);