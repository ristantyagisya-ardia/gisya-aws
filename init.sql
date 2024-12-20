CREATE TABLE mahasiswa (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100),
    nim VARCHAR(20),
    prodi VARCHAR(100)
);

INSERT INTO mahasiswa (nama, nim, prodi) VALUES 
('Ristantya Gisya Ardia', '23083000003', 'S1 Sistem Informasi');