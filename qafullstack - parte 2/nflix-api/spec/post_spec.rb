describe "post" do
  context "when new user" do
    let(:result) { ApiUser.save(build(:user).to_hash) }

    it { expect(result.response.code).to eql "200" }
  end

  context "when duplicate email" do
    let(:result) { ApiUser.save(build(:registered_user).to_hash) }

    it { expect(result.response.code).to eql "409" }
    it { expect(result.parsed_response["msg"]).to eql "Oops. Looks like you already have an account with this email address." }

    context "when wrong email" do
      let(:result) { ApiUser.save(build(:user_wrong_email).to_hash) }

      it { expect(result.response.code).to eql "412" }
      it { expect(result.parsed_response["msg"]).to eql "Oops. You entered a wrong email." }
    end

    context "when empty name" do
      let(:result) { ApiUser.save(build(:empty_name_user).to_hash) }

      it { expect(result.response.code).to eql "412" }
      it { expect(result.parsed_response["msg"]).to eql "Validation notEmpty on full_name failed" }
    end

    context "when empty email" do
      let(:result) { ApiUser.save(build(:empty_email_user).to_hash) }

      it { expect(result.response.code).to eql "412" }
      it { expect(result.parsed_response["msg"]).to eql "Validation notEmpty on email failed" }
    end

    context "when empty password" do
      let(:result) { ApiUser.save(build(:empty_password_user).to_hash) }

      it { expect(result.response.code).to eql "412" }
      it { expect(result.parsed_response["msg"]).to eql "Validation notEmpty on password failed" }
    end

    context "when notnull email" do
      let(:result) { ApiUser.save(build(:notnull_email_user).to_hash) }

      it { expect(result.response.code).to eql "412" }
      it { expect(result.parsed_response["msg"]).to eql "Users.email cannot be null" }
    end

    context "when notnull name" do
      let(:result) { ApiUser.save(build(:notnull_name_user).to_hash) }

      it { expect(result.response.code).to eql "412" }
      it { expect(result.parsed_response["msg"]).to eql "Users.full_name cannot be null" }
    end

    context "when notnull password" do
      # before do
      #   @new_user = build(:notnull_password_user).to_hash
      #   @result = ApiUser.save(@new_user)
      # end

      let(:result) { ApiUser.save(build(:notnull_password_user).to_hash) }
      it { expect(result.response.code).to eql "412" }
      it { expect(result.parsed_response["msg"]).to eql "Users.password cannot be null" }
    end
  end
end
