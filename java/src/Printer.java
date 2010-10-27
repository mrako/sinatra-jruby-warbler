import java.util.ArrayList;

import javax.print.DocFlavor;
import javax.print.PrintService;
import javax.print.PrintServiceLookup;
import javax.print.attribute.HashPrintRequestAttributeSet;

public class Printer {
	public static ArrayList<String> findPrinters() {
		ArrayList<String> printers = new ArrayList<String>();
		
		PrintService[] allPrinters = PrintServiceLookup.lookupPrintServices(DocFlavor.BYTE_ARRAY.AUTOSENSE, new HashPrintRequestAttributeSet());

		for (PrintService printer : allPrinters) {
			printers.add(printer.getName());
		}
		
		return printers;
	}
}
