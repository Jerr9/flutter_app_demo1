import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialAppVC()
  );
}

class MaterialAppVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FirstPage(),
      ),
      routes: {
        "/first": (context) => FirstPage(),
        "/second": (context) => SecondPage(),
        "/third": (context) => ThirdPage(),
        "/forth": (context) => ForthPage(),
        "/fifth": (context) => FifthPage(),
        "/sixth": (context) => SixthPage(),
      }
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstPage")
      ),
      body: Container(
        child: RaisedButton(
          child: Text("NavigateTo"),
          onPressed: () {
            Future a = Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(),
                settings: RouteSettings(
                  arguments: {
                    "from": "FirstPage-to-SecondPage"
                  }
                )
              )
            );
            a.then((value) {
              print(value);
            });
          }
        )
      )
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 上一个页面传递的参数
    print(ModalRoute.of(context).settings.arguments);
    // 返回键
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
              title: Text("SecondPage")
          ),
          body: Container(
            child: Column(
              children: [
                RaisedButton(
                    child: Text("Navigator.push"),
                    onPressed: () {
                      Navigator.pushNamed(context, "/third", arguments: {"from": "SecondPage-to-ThirdPage"});
                    }
                ),
                RaisedButton(
                    child: Text("Navigator.pop"),
                    onPressed: () {
                      Navigator.pop(context, {"id": 1});
                    }
                ),
              ],
            ),
          ),
        ),
      onWillPop: () {
        print("点击返回键");
        Navigator.pop(context, {"id": 2});
        // return Future(()=>true);
        return Future.value(true);
      },
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("ThirdPage")
        ),
        body: Container(
            child: Column(
              children: [
                RaisedButton(
                    child: Text("Navigator.push"),
                    onPressed: () {
                      Navigator.pushNamed(context, "/forth", arguments: {"from": "ThirdPage-to-ForthPage"});
                    }
                ),
                RaisedButton(
                    child: Text("Navigator.pop"),
                    onPressed: () {
                      Navigator.pop(context, {"id": 1});
                    }
                ),
              ],
            )
        )
    );
  }
}

class ForthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("ForthPage")
        ),
        body: Container(
            child: Column(
              children: [
                RaisedButton(
                    child: Text("Navigator.push"),
                    onPressed: () {
                      Navigator.pushNamed(context, "/fifth", arguments: {"from": "ForthPage-to-FifthPage"});
                    }
                ),
                RaisedButton(
                    child: Text("Navigator.pop"),
                    onPressed: () {
                      // Navigator.pop(context, {"id": 1});
                    }
                ),
              ],
            )
        )
    );
  }
}

class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("FifthPage")
        ),
        body: Container(
            child: Column(
              children: [
                RaisedButton(
                    child: Text("Navigator.push"),
                    onPressed: () {
                      Navigator.pushNamed(context, "/sixth", arguments: {"from": "FifthPage-to-SixthPage"});
                    }
                ),
                RaisedButton(
                    child: Text("Navigator.pop"),
                    onPressed: () {
                      Navigator.popUntil(context, (route) {
                        // return route.isFirst; // 回到第一页
                        return route.settings.name == '/third';
                      });
                    }
                ),
              ],
            )
        )
    );
  }
}

class SixthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("SixthPage")
        ),
        body: Container(
            child: Column(
              children: [
                RaisedButton(
                    child: Text("Stop"),
                    onPressed: () {
                      // Navigator.pushNamed(context, "/third", arguments: {"from": "second-to-third"});
                    }
                ),
                RaisedButton(
                    child: Text("Navigator.pop"),
                    onPressed: () {
                      // Navigator.pop(context, {"id": 1});
                    }
                ),
              ],
            )
        )
    );
  }
}