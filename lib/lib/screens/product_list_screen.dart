import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo de Bebidas'),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('products').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No hay productos disponibles.'));
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var doc = snapshot.data!.docs[index];
              return Card(
                margin: EdgeInsets.all(8),
                child: ListTile(
                  title: Text(doc['name'] ?? 'Sin nombre'),
                  subtitle: Text('${doc['type'] ?? 'Tipo'} • Stock: ${doc['stock'] ?? 0}'),
                  trailing: Text('\$${doc['price']?.toStringAsFixed(0) ?? '0'}'),
                  onTap: () {
                    // Aquí iría la lógica para agregar al carrito
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Agregado al carrito (próximamente)')),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
