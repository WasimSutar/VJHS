/**
 * 
 */
package com.vjhs.interfaces;

import com.vjhs.pojo.ClassTimeTable;

/**
 * @author wasimakram.sutar
 *
 */
public interface ClassTimeTableOperation {

	boolean addClassTimeTable(ClassTimeTable classTimeTable);
	boolean updateClassTimeTable(ClassTimeTable classTimeTable);
	ClassTimeTable getClassTimeTable(String className);
	
}
