//
//  card.swift
//  TimeAura
//
//  Created by found on 09/12/25.
//


import SwiftUI



struct ActivityCardView: View {
    let activity: Activity
    
    var body: some View {
        HStack(spacing: 16) {
            
            Image(activity.avatar)
                .resizable()
                .scaledToFill()
                .frame(width: 52, height: 52)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                Text(activity.name)
                    .font(.headline)
                    .lineLimit(1)
                    .foregroundColor(.black)
                
                Text(activity.description)
                    .font(.subheadline)
                    .lineLimit(1)
                    .foregroundColor(.gray)
                
                Text(activity.time)
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
           
            Spacer()
            
            Text("+ \(activity.points)")
                .font(.subheadline)
                .padding(.horizontal, 13)
                .padding(.vertical, 5)
                .background(Capsule()
                    .fill(Color.azulDestaque)
                )
        
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill (Color.card) )
        
    }
}




struct ActivityContentView: View {

    let activities = [
        Activity(
            name: "Vladimir",
            description: "2h de estudo - matemática",
            time: "Há 3h",
            points: 8,
            avatar: "vladimir"
        ),
        Activity(
            name: "Luiza Santos",
            description: "Bebi água - 250ml",
            time: "Há 5h",
            points: 2,
            avatar: "luiza"
        )
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(activities) { activity in
                    ActivityCardView(activity: activity)
                }
            }
            .padding()
        }
        .background(Color(.systemGroupedBackground))
    }
}



#Preview {
    ActivityContentView()
}
