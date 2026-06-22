import 'package:flutter/material.dart';

void main() {
  runApp(const CardPaymentDemoApp());
}

class CardPaymentDemoApp extends StatelessWidget {
  const CardPaymentDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Payment Simulator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const POSScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ===================================================
// SCREEN 1: POS System
// ===================================================
class POSScreen extends StatefulWidget {
  const POSScreen({super.key});

  @override
  State<POSScreen> createState() => _POSScreenState();
}

class _POSScreenState extends State<POSScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Payment Simulator'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'POS SYSTEM',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Point of Sale Terminal',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                'Rs. 5,000.00',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Enter amount and send payment request',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            // Flow Path
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey[200]!),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('POS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Card Machine'),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Processor'),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Bank'),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RequestScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                backgroundColor: Colors.blue[700],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Send to Card Machine',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ===================================================
// SCREEN 2: Request Sent
// ===================================================
class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Sent'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'REQUEST SENT',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'The POS System has sent the payment request to the Card Machine.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey[200]!),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('POS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Card Machine', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Processor'),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Bank'),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CardMachineScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                backgroundColor: Colors.green[600],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Acknowledge (Received)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ===================================================
// SCREEN 3: Card Machine - Tap
// ===================================================
class CardMachineScreen extends StatelessWidget {
  const CardMachineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Machine'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'CARD MACHINE',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Please tap your card',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'The Card Machine reads the card data and encrypts it.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey[200]!),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('POS'),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Card Machine', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Processor', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Bank'),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProcessingScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                backgroundColor: Colors.blue[700],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Tap Card',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ===================================================
// SCREEN 4: Processing (Built-in CircularProgressIndicator)
// ===================================================
class ProcessingScreen extends StatelessWidget {
  const ProcessingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Processing...'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Built-in loading spinner (no external package needed)
            const CircularProgressIndicator(
              color: Colors.blue,
              strokeWidth: 6.0,
            ),
            const SizedBox(height: 20),
            const Text(
              'PROCESSING...',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Sending encrypted data to the bank for authorization.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey[200]!),
              ),
              child: const Text(
                'POS → Card Machine → Processor → Acquiring Bank → Card Network → Issuing Bank',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Waiting for response...',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const ResponseScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                    backgroundColor: Colors.green[600],
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('Approved (Simulate)'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const DeclineScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                    backgroundColor: Colors.red[600],
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('Declined (Simulate)'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ===================================================
// SCREEN 5: Response - Approved
// ===================================================
class ResponseScreen extends StatelessWidget {
  const ResponseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Response'),
        backgroundColor: Colors.green[700],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'APPROVED',
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Response Code: 00',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Transaction authorized by the Issuing Bank.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.green[200]!),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Issuing Bank', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Card Network', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Acquiring Bank', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Processor', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Card Machine', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('POS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CompleteScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                backgroundColor: Colors.blue[700],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Finalize & Print Receipt',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ===================================================
// SCREEN 5b: Response - Declined
// ===================================================
class DeclineScreen extends StatelessWidget {
  const DeclineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Response'),
        backgroundColor: Colors.red[700],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'DECLINED',
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Response Code: 51',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Insufficient funds. Please try another card.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.red[200]!),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Issuing Bank', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Card Network', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Acquiring Bank', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Processor', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Card Machine', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('POS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CompleteScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                backgroundColor: Colors.blue[700],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Finalize & Print Receipt',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ===================================================
// SCREEN 6: Transaction Complete
// ===================================================
class CompleteScreen extends StatelessWidget {
  const CompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Complete'),
        backgroundColor: Colors.green[700],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'TRANSACTION COMPLETE',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Payment Successful',
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                'Rs. 5,000.00',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                'Receipt: POS-2026-0618',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                'Time: 2.3 seconds',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey[200]!),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Request', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Forward Path'),
                  SizedBox(width: 12),
                  Text('|', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 12),
                  Text('Response', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                  SizedBox(width: 6),
                  Text('→', style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 6),
                  Text('Return Path'),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const POSScreen()),
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                backgroundColor: Colors.grey[200],
                foregroundColor: Colors.blue[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                side: BorderSide(color: Colors.blue[700]!),
              ),
              child: const Text(
                'Start New Transaction',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}