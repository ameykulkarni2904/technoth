package com.psl.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.psl.model.Participant;

public class SampleExelReader {

	private Object getCellValue(Cell cell) {
		switch (cell.getCellType()) {
		case Cell.CELL_TYPE_STRING:
			return cell.getStringCellValue();

		case Cell.CELL_TYPE_BOOLEAN:
			return cell.getBooleanCellValue();

		case Cell.CELL_TYPE_NUMERIC:
			return cell.getNumericCellValue();
		}

		return null;
	}

	public List<Participant> readExcel(String fileName) throws IOException {
		// TODO Auto-generated method stub
		List<Participant> listParticipants = new ArrayList<Participant>();

		FileInputStream inputStream = new FileInputStream(new File(fileName));

		Workbook workbook = new XSSFWorkbook(inputStream);
		Sheet firstSheet = workbook.getSheetAt(0);
		Iterator<Row> iterator = firstSheet.iterator();
		Row firstRow = iterator.next();
		while (iterator.hasNext()) {
			Row nextRow = iterator.next();
			Iterator<Cell> cellIterator = nextRow.cellIterator();
			Participant participant = new Participant();
			while (cellIterator.hasNext()) {
				Cell nextCell = cellIterator.next();
		/*		System.out.println(nextCell.toString());*/
				int columnIndex = nextCell.getColumnIndex();

				switch (columnIndex) {
				case 0:
					participant.setEmployee_id((int)Double.parseDouble(getCellValue(nextCell).toString()));
					break;
				case 1:
					participant
							.setEmployee_name((String) getCellValue(nextCell));
					break;
				case 2:
					participant.setMail_id((String) getCellValue(nextCell));
					break;
				case 3:
					participant.setBatch((String) getCellValue(nextCell));
					break;
				case 4:
					participant.setContact_no((long)Double.parseDouble(getCellValue(nextCell).toString()));
					break;
				}

			}
	
			listParticipants.add(participant);
		}

		inputStream.close();
		return listParticipants;
	}

}
