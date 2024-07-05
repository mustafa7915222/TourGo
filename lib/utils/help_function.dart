List<Map<String, dynamic>> properties1 = [];

Future<void> fetchData() async {
  // Simulating a network request with a delay
  await Future.delayed(const Duration(seconds: 2));

  // Sample data
  properties1 = [
    {
      "property_id": 1,
      "name": "شاليه جبلي دافئ",
      "description": "شاليه دافئ يقع في الجبال، مثالي لقضاء عطلة هادئة.",
      "price_per_night": 1200000,
      "location": "المنطقة الجبلية",
      "property_type": "Chalet",
      "owner_name": "Owner One",
      "latitude": 35.01765021,
      "longitude": 35.5000209,
      "facilities": [
        {"facility_id": 13, "name": "مرافق للشواطئ أو المسبح"},
        {"facility_id": 3, "name": "مطبخ مجهز بالكامل"},
        {"facility_id": 4, "name": "مرافق شواء أو باربيكيو"}
      ],
      "images": ["https://himart.dev/tourgo/images/Chalet/10.jpg"]
    },
    {
      "property_id": 2,
      "name": "شاليه مطل على البحيرة",
      "description": "شاليه بإطلالات خلابة على البحيرة ومرافق حديثة.",
      "price_per_night": 150,
      "location": "منطقة البحيرات",
      "property_type": "Chalet",
      "owner_name": "Owner Two",
      "latitude": 35.94720616,
      "longitude": 36.32395787,
      "facilities": [
        {"facility_id": 13, "name": "مرافق للشواطئ أو المسبح"},
        {"facility_id": 4, "name": "مرافق شواء أو باربيكيو"},
        {"facility_id": 14, "name": "موقد أو فرن للطهي"}
      ],
      "images": ["https://himart.dev/tourgo/images/Chalet/2.jpg"]
    },
    {
      "property_id": 3,
      "name": "شاليه مخفي في الغابة",
      "description": "شاليه منعزل محاط بالطبيعة والحياة البرية.",
      "price_per_night": 110,
      "location": "الغابة",
      "property_type": "Chalet",
      "owner_name": "Owner Three",
      "latitude": 34.83806556,
      "longitude": 36.15501164,
      "facilities": [
        {"facility_id": 11, "name": "جاكوزي أو حوض استحمام ساخن"},
        {"facility_id": 14, "name": "موقد أو فرن للطهي"},
        {"facility_id": 6, "name": "منطقة للألعاب مثل طاولة بلياردو أو تنس الطاولة"}
      ],
      "images": ["https://himart.dev/tourgo/images/Chalet/3.jpg"]
    }
  ];

  // Update the state to display the data
}
