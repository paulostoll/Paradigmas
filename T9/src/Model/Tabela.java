/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import com.restfb.types.User;
import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Stoll
 */
public class Tabela extends AbstractTableModel{
    private static final String[] columnNames = {"Número", "Imagem", "ID", "Nome"};
    
    private ArrayList<User> lista;
    
    public Tabela(){
        lista = new ArrayList<User>();
    }
    
    public void addTabela(User user){
        lista.add(user);
        fireTableRowsInserted(lista.size()-1, lista.size()-1);    }
    
     @Override
    public int getColumnCount() {
        return columnNames.length;
    }

    @Override
    public String getColumnName(int columnIndex) {
        return columnNames[columnIndex];
    }

    @Override
    public int getRowCount() {
        return lista.size();
    }
    
    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        switch(columnIndex) {
            //case 0: return user.get(rowIndex).getAno();
            //case 1: return lista.get(rowIndex).getSemestre();
            case 2: return lista.get(rowIndex).getId();
            case 3: return lista.get(rowIndex).getName();
        }
        return null;
    }
}
