const { Router } = require('express')
const pool = require('../database');
const router = Router()

router.post('/registro', async (req, res) => {
    try {
        const {
            Vendedor,
            NombreComprador,
            DocumentoComprador,
            TelefonoComprador,
            CorreoComprador,
            Direccionuno,
            Direcciondos,
            Direccionadicional,
            Pais,
            Autorizado,
            Observaciones
        } = req.body

        const sql = `INSERT INTO orden_de_compra 
        (id, Vendedor, NombreComprador, DocumentoComprador, TelefonoComprador, CorreoComprador, Direccionuno, Direcciondos, Direccionadicional, Pais, Autorizado, Observaciones, fecha) 
        VALUES (NULL, '${Vendedor}', '${NombreComprador}', '${DocumentoComprador}', '${TelefonoComprador}', '${CorreoComprador}', '${Direccionuno}', '${Direcciondos}', '${Direccionadicional}', '${Pais}', '${Autorizado}', '${Observaciones}', current_timestamp());`
    
        var rows = await pool.query(sql);

        return res.status(200).json(rows)

    } catch (error) {
        return res.status(401).send("dara")
    }

})

router.get('/datos', async (req, res) => {
    try {
   
        const sql = `SELECT * FROM orden_de_compra`
    
        var rows = await pool.query(sql);

        return res.status(200).json(rows)

    } catch (error) {
        return res.status(401).send("dara")
    }

})

module.exports = router;



