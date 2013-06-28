/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

/**
 *
 * @author vinicius
 */
public class DAOException extends Exception {
    
        public DAOException(String arg){
                super(arg);
        }

        public DAOException(Throwable arg){
                super(arg);
        }

        public DAOException(String arg,Throwable arg1){
                super(arg,arg1);
        }

    
}
