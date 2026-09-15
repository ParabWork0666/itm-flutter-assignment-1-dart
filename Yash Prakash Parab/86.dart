// Abstract base class DataProcessor
abstract class DataProcessor {
  String datasetName;

  DataProcessor(this.datasetName);

  // Abstract method: Must be implemented by concrete subclasses
  void processData();

  // Template method (Concrete Base Method): Defines fixed pipeline workflow that subclasses should not override
  void runPipeline() {
    print('=== Processing Pipeline: $datasetName ===');
    print('[Step 1]: Initializing dataset stream...');
    processData(); // Subclass specific execution step
    print('[Step 3]: Finalizing and flushing buffer.');
    print('=========================================\n');
  }
}

// Concrete subclass 1
class CSVProcessor extends DataProcessor {
  CSVProcessor(String datasetName) : super(datasetName);

  @override
  void processData() {
    print('[Step 2]: Parsing CSV rows and converting records...');
  }
}

// Concrete subclass 2
class JSONProcessor extends DataProcessor {
  JSONProcessor(String datasetName) : super(datasetName);

  @override
  void processData() {
    print('[Step 2]: Deserializing JSON tokens and building objects...');
  }
}

void main() {
  print('--- Abstract Class Template (Fixed Method Workflow) Demonstration ---\n');

  DataProcessor csvProc = CSVProcessor('sales_data.csv');
  csvProc.runPipeline();

  DataProcessor jsonProc = JSONProcessor('payload.json');
  jsonProc.runPipeline();
}
