//
//  ContentView.swift
//  Login
//
//  Created by Valerie 👩🏼‍💻 on 21/04/2021.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var appearEgg = false
    @State private var buttonAnimation = false
    
    var body: some View {
        ZStack {
            background
            EggView()
                .offset(x: appearEgg ? -100 : 0)
                .onAppear {
                    withAnimation(Animation.spring(response: 1, dampingFraction: 5, blendDuration: 2).delay(2)) {
                        appearEgg = true
                    }
                    withAnimation(Animation.easeInOut(duration: 0.8).delay(1.5)) {
                        buttonAnimation = true
                    }
                }
            
            VStack(spacing: 20) {
                Text("Sign up")
                    .font(.largeTitle).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Access amazing features with registrations. Courses, tutorials and livestreams.")
                    .opacity(0.8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Email", text: $email)
                    .foregroundColor(.white)
                    .padding(12)
                    .background(Color(#colorLiteral(red: 0.1568627451, green: 0.1058823529, blue: 0.3529411765, alpha: 1)).opacity(0.8))
                    .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .stroke(Color.white)
                            .blendMode(.overlay)
                    )
                
                SecureField("Password", text: $password)
                    .foregroundColor(.white)
                    .padding(12)
                    .background(Color(#colorLiteral(red: 0.1568627451, green: 0.1058823529, blue: 0.3529411765, alpha: 1)).opacity(0.8))
                    .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .stroke(Color.white)
                            .blendMode(.overlay)
                    )
                
                Text("By clicking on Sign up you agree to our Terms of service and Privacy policy.")
                    .font(.subheadline)
                    .foregroundColor(Color.white.opacity(0.8))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Button(action: { }) {
                    Text("Sign up")
                        .bold()
                        .gradientForeground(colors: [Color(#colorLiteral(red: 1, green: 0.971666693687439, blue: 0.7166666984558105, alpha: 1)), Color(#colorLiteral(red: 0.574999988079071, green: 0.8893333673477173, blue: 0.9583333134651184, alpha: 1))])
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding(12)
                .background(Color(#colorLiteral(red: 0.1568627451, green: 0.1058823529, blue: 0.3529411765, alpha: 1)).opacity(0.8))
                .mask(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .stroke(Color.white)
                        .blendMode(.overlay)
                )
                .background(
                    AngularGradient(
                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 1, green: 0.7458333373069763, blue: 0.8983334302902222, alpha: 1) ), location: 0),
                                            .init(color: Color(#colorLiteral(red: 1, green: 0.971666693687439, blue: 0.7166666984558105, alpha: 1)), location: 0.34375),
                                            .init(color: Color(#colorLiteral(red: 0.574999988079071, green: 0.8893333673477173, blue: 0.9583333134651184, alpha: 1)), location: 0.5677083134651184),
                                            .init(color: Color(#colorLiteral(red: 1, green: 0.7458333373069763, blue: 0.8983334302902222, alpha: 1)), location: 0.7864583134651184)]),
                        center: UnitPoint(x: 0.5, y: 0.49999999999999994)
                    )
                    .frame(width: 320, height: 80)
                    .blur(radius: 20)
                )
                .opacity(buttonAnimation ? 1 : 0)
                
            }
            .foregroundColor(.white)
            .padding(20)
            .background(VisualEffectBlurView(blurStyle: .systemThinMaterialDark))
            .overlay(
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .stroke(Color.white)
                    .blendMode(.overlay)
            )
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            //.cornerRadius(30) /// different style
            .padding()
        }
    }
    
    private var background: some View {
        LinearGradient(
            gradient: Gradient(stops: [
                                .init(color: Color(#colorLiteral(red: 0.2844547927379608, green: 0.21545138955116272, blue: 0.7083333134651184, alpha: 1)), location: 0),
                                .init(color: Color(#colorLiteral(red: 0.22885003685951233, green: 0.1341666728258133, blue: 0.38333332538604736, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0.5895522477572405, y: 0.9595588416046616),
            endPoint: UnitPoint(x: 0.15671644055226752, y: 0.06433823169871888))
            .ignoresSafeArea()
    }
    
    
}
extension View {
    func gradientForeground(colors: [Color]) -> some View {
        self
            .overlay(LinearGradient(gradient: .init(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
}

struct EggView: View {
    var body: some View {
        MyCustomShape()
            .fill(AngularGradient(
                gradient: Gradient(stops: [
                                    .init(color: Color(#colorLiteral(red: 1, green: 0.7458333373069763, blue: 0.8983334302902222, alpha: 1) ), location: 0),
                                    .init(color: Color(#colorLiteral(red: 1, green: 0.971666693687439, blue: 0.7166666984558105, alpha: 1)), location: 0.34375),
                                    .init(color: Color(#colorLiteral(red: 0.574999988079071, green: 0.8893333673477173, blue: 0.9583333134651184, alpha: 1)), location: 0.5677083134651184),
                                    .init(color: Color(#colorLiteral(red: 1, green: 0.7458333373069763, blue: 0.8983334302902222, alpha: 1)), location: 0.7864583134651184)]),
                center: UnitPoint(x: 0.5, y: 0.49999999999999994)
            ))
            .frame(width: 300, height: 500)
            .overlay(
                Circle()
                    .fill(RadialGradient(
                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 0.6153333187103271, green: 0.21666663885116577, blue: 0.6499999761581421, alpha: 1)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.8708333373069763, green: 0.43178820610046387, blue: 0.6425298452377319, alpha: 1)), location: 1)]),
                        center: UnitPoint(x: 0.2094594633289728, y: 0.5000000304826167),
                        startRadius: 1.1293287892371668,
                        endRadius: 112.93287892371669
                    ))
                    .frame(width: 250, height: 250)
                    .blur(radius: 30)
                    .offset(x: -50, y: 20)
            )
    }
}

struct MyCustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.10909*width, y: 0.99872*height))
        path.addCurve(to: CGPoint(x: 0.98712*width, y: 0.60459*height), control1: CGPoint(x: 0.47087*width, y: 0.99872*height), control2: CGPoint(x: 0.91351*width, y: 0.86982*height))
        path.addCurve(to: CGPoint(x: 0.41844*width, y: -0.116*height), control1: CGPoint(x: 1.06072*width, y: 0.33937*height), control2: CGPoint(x: 0.78022*width, y: -0.116*height))
        path.addCurve(to: CGPoint(x: -0.39381*width, y: 0.39549*height), control1: CGPoint(x: 0.05666*width, y: -0.116*height), control2: CGPoint(x: -0.39381*width, y: 0.12697*height))
        path.addCurve(to: CGPoint(x: 0.10909*width, y: 0.99872*height), control1: CGPoint(x: -0.39381*width, y: 0.66401*height), control2: CGPoint(x: -0.25269*width, y: 0.99872*height))
        path.closeSubpath()
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
