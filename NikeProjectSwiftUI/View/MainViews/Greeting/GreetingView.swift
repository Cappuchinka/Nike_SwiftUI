import SwiftUI

struct GreetingView: View {

    let onComplete: () -> Void

    var body: some View {
        ZStack {
            Image("greetingBackgroundImage")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            Rectangle()
                .fill(Color.black)
                .opacity(0.3)
                .ignoresSafeArea()

            Rectangle()
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black, Color.black.opacity(0.0)]),
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
                .ignoresSafeArea()
                .padding(.top, 287)

            VStack(alignment: .leading) {
                Image("nikeLogo")
                    .resizable()
                    .frame(width: 233, height: 132)

                VStack(alignment: .leading) {
                    Text("Nike App")
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Inter", size: 28))
                        .fontWeight(.semibold)
                        .padding(.leading, 59)
                    Text(
                        "Bringing Nike Members" +
                         "\nthe best products, " +
                         "\ninspiration and stories " +
                         "\nin sport."
                    )
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Inter", size: 28))
                        .fontWeight(.semibold)
                        .padding(.leading, 59)
                }
                .padding(.top, -48)
                .padding()

                HStack (spacing: 16) {
                    NavigationLink(destination: OnBoardingView(onComplete: onComplete)) {
                        Text("Join Us")
                            .font(.custom("Inter", size: 20))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.white)
                            .cornerRadius(25)
                    }

                    NavigationLink(destination: OnBoardingView(onComplete: onComplete)) {
                        Text("Sign In")
                            .font(.custom("Inter", size: 20))
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.white.opacity(0.0))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                            .cornerRadius(25)
                    }
                }
                .padding(.top, 16)
                .padding(.leading, 59 + 16)
                .padding(.trailing, 16)
            }
            .padding(.top, 300)
            .padding(.leading, -59)
        }
    }
}

#Preview {
    GreetingView(onComplete: {})
}
