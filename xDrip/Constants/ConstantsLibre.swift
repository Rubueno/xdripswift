import Foundation

/// constants related to Libre OOP
enum ConstantsLibre {

    /// is nonFixed enabled by default yes or no
    static let defaultNonFixedSlopeEnabled = false
    
    /// is web oop enabled by default yes or no
    static let defaultWebOOPEnabled = true
    
    /// calibration parameters will be stored locally on disk, this is the path
    static let filePathForParameterStorage = "/Documents/LibreSensorParameters"
    
    /// how many times should the app repeat the NFC scan whilst trying to get a tag response and systemInfo/patchInfo
    static let retryAttemptsForLibre2NFCScans = 10

    /// A Libre 2 sensor closes the Bluetooth link unless it receives the streaming unlock payload
    /// shortly after connecting. Traces show sessions unlocked within 2.62s always streamed, while
    /// every session that unlocked at 3.29s or later was dropped by the sensor immediately, so the
    /// real budget sits just below three seconds and covers service discovery too.
    static let libre2StreamingUnlockWindow: TimeInterval = 3.0

    /// A connected Libre 2 sensor emits a frame every minute. If nothing at all arrives for this long
    /// the link is dead even though CoreBluetooth still reports it as connected, so the transmitter
    /// forces a reconnect. Kept above `Libre2FrameDeliveryMonitor.staleDeliveryThreshold` so the
    /// arrival-driven staleness recovery gets the first chance to act.
    static let libre2NoDataReconnectAfter: TimeInterval = 6 * 60

}
