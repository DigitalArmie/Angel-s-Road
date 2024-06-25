// src/screens/SignIn.js
import React from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet } from 'react-native';

const SignIn = ({ navigation }) => {
  return (
    <View style={styles.container}>
      <Text style={styles.headerText}>Sign In to Your Account:</Text>
      <TextInput style={styles.input} placeholder="E-mail" placeholderTextColor="#666" keyboardType="email-address" />
      <TextInput style={styles.input} placeholder="Password" placeholderTextColor="#666" secureTextEntry={true} />
      <TouchableOpacity style={styles.button} onPress={() => navigation.navigate('Home')}>
        <Text style={styles.buttonText}>SIGN IN</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#D1C4E9',
  },
  headerText: {
    fontSize: 20,
    marginBottom: 20,
  },
  input: {
    width: '80%',
    padding: 10,
    marginVertical: 10,
    backgroundColor: '#FFF',
    borderRadius: 20,
  },
  button: {
    backgroundColor: '#673AB7',
    padding: 15,
    borderRadius: 20,
    width: '60%',
    alignItems: 'center',
    marginTop: 20,
  },
  buttonText: {
    color: '#FFF',
  },
});

export default SignIn;