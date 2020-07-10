//
//  UIConstants.swift
//  PiStatsMobile
//
//  Created by Fernando Bunn on 04/07/2020.
//

import SwiftUI

struct UIConstants {
    struct Geometry {
        static let defaultCornerRadius: CGFloat = 10.0
        static let defaultPadding: CGFloat = 10.0
        static let shadowRadius: CGFloat = 0
        static let addPiholeButtonHeight: CGFloat = 55.0
    }
    
    struct Colors {
        static let background = Color("BackgroundColor")
        static let cardColor = Color("CardColor")
        static let cardColorGradientTop = Color("CardColorGradientTop")
        static let cardColorGradientBottom = Color("CardColorGradientBottom")
        static let domainsOnBlocklist = Color("DomainsOnBlockList")
        static let totalQueries = Color("TotalQueries")
        static let queriesBlocked = Color("QueriesBlocked")
        static let percentBlocked = Color("PercentBlocked")
        static let statusOffline = Color("StatusOffline")
        static let statusOnline = Color("StatusOnline")
        static let statusWarning = Color("StatusWarning")
        static let errorMessage = Color("StatusOffline")
    }
    
    struct Strings {
        static let disableButton = "Disable"
        static let enableButton = "Enable"
        static let totalQueries = "Total Queries"
        static let percentBlocked = "Percent Blocked"
        static let blocklist = "Blocklist"
        static let queriesBlocked = "Queries Blocked"
        static let piholeTokenFooterSection = "Token is required for some functionalities like disable/enable your pi-hole.\n\nYou can find the API Token on /etc/pihole/setupVars.conf under WEBPASSWORD or you can open the web UI and go to Settings -> API -> Show API Token"
        static let piholeSetupHostPlaceholder = "Host"
        static let piholeSetupPortPlaceholder = "80"
        static let piholeSetupTokenPlaceholder = "Token (Optional)"
        static let saveButton = "Save"
        static let cancelButton = "Cancel"
        static let statusEnabled = "Active"
        static let statusDisabled = "Offline"
        static let statusNeedsAttention = "Needs Attention"
        static let statusEnabledAndDisabled = "Partially Active"

        static let settingsSectionDisplay = "Display"
        static let settingsDisplayAsList = "Display Pi-hole stats as list"
        static let settingsDisplayIcons = "Display Pi-hole stats icons"
        static let settingsSectionActions = "Actions"
        static let settingsAlwaysDisablePermanently = "Always disable Pi-hole permanently"
        static let addFirstPiholeCaption = "Tap here to add your first pi-hole"
        static let displayIconBadgeForOfflinePiholes = "Display icon badge for offline pi-holes"
        static let piholesNavigationTitle = "Pi-holes"
        static let settingsNavigationTitle = "Settings"
        static let disablePiholeOptionsTitle = "Disable Pi-hole"
        static let disablePiholeOptions30Seconds = "30 seconds"
        static let disablePiholeOptions1Minute = "1 minute"
        static let disablePiholeOptions5Minutes = "5 minutes"
        static let disablePiholeOptionsPermanently = "Permanently"
        struct Error {
            static let invalidAPIToken = "Invalid API Token"
            static let invalidResponse = "Invalid Response"
            static let invalidURL = "Invalid URL"
            static let decodeResponseError = "Can't decode response"
            static let noAPITokenProvided = "No API Token Provided"
            static let sessionError = "Session Error"
        }
    }
    
    struct SystemImages {
        static let piholeSetupHost = "server.rack"
        static let piholeSetupPort = "globe"
        static let piholeSetupToken = "key"
        static let piholeSetupTokenQRCode = "qrcode"
        static let piholeStatusWarning = "exclamationmark.shield.fill"
        static let piholeStatusOffline = "xmark.shield.fill"
        static let piholeStatusOnline = "checkmark.shield.fill"
        static let errorMessageWarning = "exclamationmark.triangle.fill"
        static let settingsDisablePermanently = "xmark.shield"
        static let settingsDisplayIcons = "globe"
        static let settingsDisplayAsList = "list.bullet"
        static let settingsDisplayIconBadgeForOffline = "app.badge"
        static let addPiholeButton = "plus"
        static let disablePiholeButton = "stop.fill"
        static let enablePiholeButton = "play.fill"
    }
}
