package kakao;

public class Quiz01 {
	public static void main(String[] args) {
		int m = 6;
		int n = 4;
		int[][] picture = {
				{1, 1, 1, 0},
				{1, 2, 2, 0},
				{1, 0, 0, 1},
				{0, 0, 0, 1},
				{0, 0, 0, 3},
				{0, 0, 0, 3}
		};
		int[] result = solution(m, n, picture);
		System.out.println(result[0]);
		System.out.println(result[1]);
	}

	private static int[] solution(int m, int n, int[][] picture) {
		int numberOfArea = 0;
		int maxSizeOfOneArea = 0;

		int[][] copy = picture;
		int target = 0;
		int count = 0;

		if(1<=m && n<=100 && (0 <= m*n) && (m*n <= (Math.pow(2, 31) - 1))) {

			for(int i = 0; i < m; i++) {
				for(int j = 0; j < n; j++) {
					if(picture[i][j] != 0) {
						target = picture[i][j];
						count++;
						picture[i][j] = 0;

					}
				}
			}

		}

		int[] answer = new int[2];
		answer[0] = numberOfArea;
		answer[1] = maxSizeOfOneArea;
		return answer;
	}
}
