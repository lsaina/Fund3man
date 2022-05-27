package kr.or.store.model.vo;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class StoreViewData {
	private Store s;
	private ArrayList<StoreStar> list;
	private double starAvg;
}
