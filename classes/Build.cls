public class Build  {
	//==========================================================================
	// PeopleBuilder
	//==========================================================================

	public class PeopleBuilder {
		private People__c obj = new People__c();

		public PeopleBuilder withName(String val) {
			obj.Name = val;
			return this;
		}

		public PeopleBuilder withEmploymentStatus(String val) {
			obj.Employment_Status__c = val;
			return this;
		}

		public People__c build() {
			return obj;
		}
	}

	public static PeopleBuilder createPeople() { return new PeopleBuilder(); }

}