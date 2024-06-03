db.pedidos.aggregate([
  {
    $match: {
      $and: [{
        "data_hora_pedido": {
          $gt: ISODate("2021-05-01")
        }
      },
      {
        "data_hora_pedido": {
          $lt: ISODate("2022-05-10")
        }
      }]
    }
  },
  {
    $project: {
      "data_hora_pedido": 1,
      "forma_envio.endereco.cidade": 1,
      "forma_pagamento": 1
    }
  },
  {
    $sort: {
      "data_hora_pedido": 1
    }
  }
])

db.pedidos.aggregate([
  {
    $match: {
      $and: [{
        "data_hora_pedido": {
          $gte: ISODate("2021-01-01")
        }
      },
      {
        "data_hora_pedido": {
          $lte: ISODate("2022-12-31")
        }
      },
      {
        "id_cliente": 191
      }]
    }
  },
  {
    $project: {      
      "forma_pagamento": 1,
      "status": 1,
      "valor_total": 1
    }
  },
  {
    $sort: {
      "data_hora_pedido": 1
    }
  }
])
