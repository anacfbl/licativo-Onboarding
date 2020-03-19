//
//  ViewController.swift
//  meu dia
//
//  Created by Ana Clara Ferreira B. Lopes on 02/03/20.
//  Copyright © 2020 Ana Clara Ferreira B. Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaSelecionados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) ?? UITableViewCell()
        
        cell.textLabel?.text = listaSelecionados[indexPath.row]
        
        return cell
    }
    
    let cellReuseIdentifier = "cell"
    
    
    @IBOutlet var meuQuadroAtividadesLabel: UILabel!
    @IBOutlet var resultadoLabel: UILabel!
    @IBOutlet var quantoTempo: UILabel!
    
    @IBOutlet var viewTela1: UIView!
    @IBOutlet var viewTela2: UIView!
    
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var tfTempo1: UITextField!
    @IBOutlet var tfTempo2: UITextField!
    @IBOutlet var tfTempo3: UITextField!
    @IBOutlet var tfTempo4: UITextField!
    @IBOutlet var tfTempo5: UITextField!
    @IBOutlet var tfTempo6: UITextField!
    @IBOutlet var tfTempo7: UITextField!
    @IBOutlet var tfTempo8: UITextField!
    
    
    @IBOutlet var faculdadeBotao: UIButton!
    @IBOutlet var estagioBotao: UIButton!
    @IBOutlet var cozinharBotao: UIButton!
    @IBOutlet var medicoBotao: UIButton!
    @IBOutlet var cursoInglesBotao: UIButton!
    @IBOutlet var academyBotao: UIButton!
    @IBOutlet var pintarBotao: UIButton!
    @IBOutlet var yogaBotao: UIButton!
    @IBOutlet var academiaBotao: UIButton!
    @IBOutlet var visitarVovoBotao: UIButton!
    @IBOutlet var lerBotao: UIButton!
    @IBOutlet var cinemaBotao: UIButton!
    @IBOutlet var assistirSerieBotao: UIButton!
    @IBOutlet var skinCareBotao: UIButton!
    @IBOutlet var lavarRoupaBotao: UIButton!
    @IBOutlet var psicologoBotao: UIButton!
    
    @IBOutlet var calcularBotao: UIButton!
    @IBOutlet var voltarBotao: UIButton!
    
    var listaSelecionados : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //destaca botões selecionados no quadro de atividades
    
    @IBAction func selecionarAtividadeBotao(_ sender: UIButton) {
        
        if sender == faculdadeBotao {
            
            if faculdadeBotao.backgroundColor == UIColor.yellow { faculdadeBotao.backgroundColor = UIColor.clear
                
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( faculdadeBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
                
            }
            else {
                faculdadeBotao.backgroundColor = UIColor.yellow
                
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( faculdadeBotao.currentTitle!))
            }
        }
        
        if sender == estagioBotao {
            
            if estagioBotao.backgroundColor == UIColor.yellow { estagioBotao.backgroundColor = UIColor.clear
                
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( estagioBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {estagioBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( estagioBotao.currentTitle!))
            }
        }
        
        if sender == cozinharBotao {
            
            if cozinharBotao.backgroundColor == UIColor.yellow { cozinharBotao.backgroundColor = UIColor.clear
                
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( cozinharBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {cozinharBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( cozinharBotao.currentTitle!))
            }
        }
        
        if sender == medicoBotao {
            
            if medicoBotao.backgroundColor == UIColor.yellow { medicoBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( medicoBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {medicoBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( medicoBotao.currentTitle!))
            }
        }
        
        if sender == cursoInglesBotao {
            
            if cursoInglesBotao.backgroundColor == UIColor.yellow { cursoInglesBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( cursoInglesBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {cursoInglesBotao.backgroundColor = UIColor.yellow //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( cursoInglesBotao.currentTitle!))
                
            }
        }
        
        if sender == academyBotao {
            
            if academyBotao.backgroundColor == UIColor.yellow { academyBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( academyBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {academyBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( academyBotao.currentTitle!))
            }
        }
        
        if sender == pintarBotao {
            
            if pintarBotao.backgroundColor == UIColor.yellow { pintarBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( pintarBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {pintarBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( pintarBotao.currentTitle!))
            }
        }
        
        if sender == yogaBotao {
            
            if yogaBotao.backgroundColor == UIColor.yellow { yogaBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( yogaBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {yogaBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( yogaBotao.currentTitle!))
            }
        }
        
        if sender == academiaBotao {
            
            if academiaBotao.backgroundColor == UIColor.yellow { academiaBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( academiaBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {academiaBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( academiaBotao.currentTitle!))
            }
        }
        
        if sender == visitarVovoBotao {
            
            if visitarVovoBotao.backgroundColor == UIColor.yellow { visitarVovoBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( visitarVovoBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {visitarVovoBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( visitarVovoBotao.currentTitle!))
            }
        }
        
        if sender == lerBotao {
            
            if lerBotao.backgroundColor == UIColor.yellow { lerBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( lerBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {lerBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( lerBotao.currentTitle!))
            }
        }
        
        if sender == cinemaBotao {
            
            if cinemaBotao.backgroundColor == UIColor.yellow { cinemaBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( cinemaBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {cinemaBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( cinemaBotao.currentTitle!))
            }
        }
        
        if sender == assistirSerieBotao {
            
            if assistirSerieBotao.backgroundColor == UIColor.yellow { assistirSerieBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( assistirSerieBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {assistirSerieBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( assistirSerieBotao.currentTitle!))
            }
        }
        
        if sender == skinCareBotao {
            
            if skinCareBotao.backgroundColor == UIColor.yellow { skinCareBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( skinCareBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {skinCareBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( skinCareBotao.currentTitle!))
            }
        }
        
        if sender == lavarRoupaBotao {
            
            if lavarRoupaBotao.backgroundColor == UIColor.yellow { lavarRoupaBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( lavarRoupaBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {lavarRoupaBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( lavarRoupaBotao.currentTitle!))
            }
        }
        
        if sender == psicologoBotao {
            
            if psicologoBotao.backgroundColor == UIColor.yellow { psicologoBotao.backgroundColor = UIColor.clear
                //retira da lista de selecionados do botao seta
                let indexValue = listaSelecionados.firstIndex(of: String( psicologoBotao.currentTitle!))!
                listaSelecionados.remove(at: indexValue)
            }
                
            else {psicologoBotao.backgroundColor = UIColor.yellow
                //adiciona na lista de selecinados do botao seta
                listaSelecionados.append(String( psicologoBotao.currentTitle!))
            }
        }
        
    } //fecha action selecionarAtividadeBotao
    
    
    func lerBotoesSelecionados() {
        //ao apertar botão seta ler botões atividaes selecionados
    }
    
    @IBAction func botaoSeta() {
        
        //so pode selecionar no max 8 atividades
        if listaSelecionados.count > 0 && listaSelecionados.count < 9 {
            
            tableView.reloadData()
            //lista de atividades selecionadas lidas
            print(listaSelecionados)
            print(listaSelecionados.count)
            
            //limpar tela ao apertao botao seta
            viewTela1.isHidden = true
            viewTela2.isHidden = false
            
            if listaSelecionados.count == 1 {
                tfTempo1.isHidden = false
                tfTempo2.isHidden = true
                tfTempo3.isHidden = true
                tfTempo4.isHidden = true
                tfTempo5.isHidden = true
                tfTempo6.isHidden = true
                tfTempo7.isHidden = true
                tfTempo8.isHidden = true
            }
            
            if listaSelecionados.count == 2 {
                tfTempo1.isHidden = false
                tfTempo2.isHidden = false
                tfTempo3.isHidden = true
                tfTempo4.isHidden = true
                tfTempo5.isHidden = true
                tfTempo6.isHidden = true
                tfTempo7.isHidden = true
                tfTempo8.isHidden = true
            }
            
            if listaSelecionados.count == 3 {
                tfTempo1.isHidden = false
                tfTempo2.isHidden = false
                tfTempo3.isHidden = false
                tfTempo4.isHidden = true
                tfTempo5.isHidden = true
                tfTempo6.isHidden = true
                tfTempo7.isHidden = true
                tfTempo8.isHidden = true
            }
            
            if listaSelecionados.count == 4 {
                tfTempo1.isHidden = false
                tfTempo2.isHidden = false
                tfTempo3.isHidden = false
                tfTempo4.isHidden = false
                tfTempo5.isHidden = true
                tfTempo6.isHidden = true
                tfTempo7.isHidden = true
                tfTempo8.isHidden = true
            }
            
            if listaSelecionados.count == 5 {
                tfTempo1.isHidden = false
                tfTempo2.isHidden = false
                tfTempo3.isHidden = false
                tfTempo4.isHidden = false
                tfTempo5.isHidden = false
                tfTempo6.isHidden = true
                tfTempo7.isHidden = true
                tfTempo8.isHidden = true
            }
            
            if listaSelecionados.count == 6 {
                tfTempo1.isHidden = false
                tfTempo2.isHidden = false
                tfTempo3.isHidden = false
                tfTempo4.isHidden = false
                tfTempo5.isHidden = false
                tfTempo6.isHidden = false
                tfTempo7.isHidden = true
                tfTempo8.isHidden = true
            }
            
            if listaSelecionados.count == 7 {
                tfTempo1.isHidden = false
                tfTempo2.isHidden = false
                tfTempo3.isHidden = false
                tfTempo4.isHidden = false
                tfTempo5.isHidden = false
                tfTempo6.isHidden = false
                tfTempo7.isHidden = false
                tfTempo8.isHidden = true
            }
            
            if listaSelecionados.count == 8 {
                tfTempo1.isHidden = false
                tfTempo2.isHidden = false
                tfTempo3.isHidden = false
                tfTempo4.isHidden = false
                tfTempo5.isHidden = false
                tfTempo6.isHidden = false
                tfTempo7.isHidden = false
                tfTempo8.isHidden = false
            }
    
        }// if>0
       
    } // fecha funcao botaoseta
    
    @IBAction func calcular() {
        
        var tempo:Int = 0

       var listaTempo: [Int] = []
        
        listaTempo.append(Int(tfTempo1.text ?? "0") ?? 0)
        listaTempo.append(Int(tfTempo2.text ?? "0") ?? 0)
        listaTempo.append(Int(tfTempo3.text ?? "0") ?? 0)
        listaTempo.append(Int(tfTempo4.text ?? "0") ?? 0)
        listaTempo.append(Int(tfTempo5.text ?? "0") ?? 0)
        listaTempo.append(Int(tfTempo6.text ?? "0") ?? 0)
        listaTempo.append(Int(tfTempo7.text ?? "0") ?? 0)
        listaTempo.append(Int(tfTempo8.text ?? "0") ?? 0)

        tempo = listaTempo.reduce(0, +)
     
        let tempoHoras = tempo/60
        let tempoMinutos = tempo%60
        
        print(tempoHoras)
        print(tempo)
        print(tempoMinutos)
        
        resultadoLabel.isHidden = false
        resultadoLabel.text = "hoje você precisará de \n \(tempoHoras) horas e \(tempoMinutos) min para cumprir suas atividades"
        
        calcularBotao.isHidden = true
    
    }// fecha action calcular
    
    
    @IBAction func voltar() {
        viewTela1.isHidden = false
        viewTela2.isHidden = true
        
        tfTempo1.text = ""
        tfTempo2.text = ""
        tfTempo3.text = ""
        tfTempo4.text = ""
        tfTempo5.text = ""
        tfTempo6.text = ""
        tfTempo7.text = ""
        tfTempo8.text = ""
        
        calcularBotao.isHidden = false
        resultadoLabel.isHidden = true

    }// fecha action voltar
    

    @IBAction func gesture(_ sender: Any) {
        viewTela2.endEditing(true)
    }
    
    
} //fecha o view controller
