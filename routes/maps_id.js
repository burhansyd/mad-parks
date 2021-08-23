const express = require('express');
const router  = express.Router();

module.exports = (db) => {

  router.get("/:id", (req, res) => {

    const userId = req.cookies.user_id;
    const mapId = req.params.id
    const templateVars = {
      userId,
      mapId
    }


    ////////
    //query db for spefic map information
    ///////



    // db.query(`SELECT * FROM users;`)
    //   .then(data => {
    //     const users = data.rows;
    //     res.json({ users });
    //   })
    //   .catch(err => {
    //     res
    //       .status(500)
    //       .json({ error: err.message });
    //   });
    res.render('maps_id', templateVars);
  });

  return router;
};
