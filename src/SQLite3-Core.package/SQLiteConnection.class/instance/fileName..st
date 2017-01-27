private
fileName: aString
	"* Macs (tested OS 10.6.2) require an absolute file path to the database, Windows and Ubuntu do not
	 * To create an in-memory database, pass ':memory:' as the argument."

	fileName := aString