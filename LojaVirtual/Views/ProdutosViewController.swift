//
//  ProdutosViewController.swift
//  LojaVirtual
//
//  Created by Patricia dos Santos Cardozo on 02/10/20.
//

import UIKit

class ProdutosViewController: UIViewController {

    @IBOutlet weak var produtosTableView: UITableView!
        
    var categorias: [String] = ["Eletronicos", "Lazer", "Eletrodomesticos"]
    var produtos: [Produto] = [Produto(nome: "Bicicleta", preco: "R$ 400,00"), Produto(nome: "Bola de Futebol", preco: "R$ 20,00"), Produto(nome: "Macbook", preco: "R$ 5.000,00")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        produtosTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
}

extension ProdutosViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categorias.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var qtdeLinhas = 0
        
        if section == 0{
            qtdeLinhas = 3
        }
        if section == 1{
            qtdeLinhas = 2
        }
        if section == 2{
            qtdeLinhas = 1
        }
        return qtdeLinhas
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = produtosTableView.dequeueReusableCell(withIdentifier: "ProdutoCell", for: indexPath)
        cell.textLabel?.text = produtos[indexPath.row].nome
        cell.detailTextLabel?.text = produtos[indexPath.row].preco
        print(indexPath.row)
        return cell
    }
    
    
}
