ind<StoreController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Update Store Name")),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              "Enter Store Name",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Input(
              hintText: 'store name',
              controller: storeController.storeNameEditingController,
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
                onPressed: () {
                  storeController.updateStoreName(
                      storeController.storeNameEditingController.text.trim());
                 Get.snackbar("Successful update!", "Done!",
                      duration: Duration(seconds: 5),
                      snackPosition: SnackPosition.BOTTOM,
                      showProgressIndicator: true);
                  Get.offNamed('/');
                },
                icon: Icon(Icons.app_registration),
                label: Text('Update'))
          ],
        ),
      ),
    );
  }
}
