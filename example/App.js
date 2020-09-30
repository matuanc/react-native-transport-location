/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 */

import React, { Component } from 'react';
import { StyleSheet, Text, View } from 'react-native';
import TransportLocation from '@uiw/react-native-transport-location';

export default class App extends Component {
  state = {
    status: 'starting',
    message: '--',
  };

  async componentDidMount() {
    // const init = await TransportLocation.init("com.zkdata.ptug.truck", "8a744876-b716-4f4f-af99-46975162fb8a", "3337057", "release")
    // console.log('~9999999,,,', init);

    // TransportLocation.start("HT-HZ52008030000962", "0000", "320116", "421022")
    // TransportLocation.stop("HT-HZ52008030000962", "0000", "320116", "421022")
    // console.log('~sdsd55555,,,')

    // RNTransportLocation.init('Testing', 123, (message) => {
    //   this.setState({
    //     status: 'native callback received',
    //     message
    //   });
    // });
  }
  render() {
    // console.log('~~~~:::4441')
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>☆RNTransportLocation example☆</Text>
        <Text style={styles.instructions}>STATUS: {this.state.status}</Text>
        <Text style={styles.welcome}>☆NATIVE CALLBACK MESSAGE☆</Text>
        <Text style={styles.instructions}>{this.state.message}</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
