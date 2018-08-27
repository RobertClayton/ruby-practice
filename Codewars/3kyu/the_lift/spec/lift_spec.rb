describe Lift do
  before(:each) do
    @lift = described_class.new(queues, capacity)
  end

  context do
    let (:queues) { [[], [], [5,5,5], [], [], [], [] ] }
    let (:capacity) { 5 }

    # it 'should do this' do
    #   expect(@lift.the_lift).to eq([0, 2, 5, 0])
    # end
  end

  describe '#need_to_change_direction?' do
    subject { @lift.need_to_change_direction? }
    let (:queues) { [[], []] }
    let (:capacity) { 5 }

    context 'when are bottom floor' do
      before { @lift.position = 0 }

      context 'going up' do
        before { @lift.direction = 'up' }

        it { is_expected.to eq(false) }
      end

      context 'going down' do
        before { @lift.direction = 'down' }

        it { is_expected.to eq(true) }
      end
    end

    context 'when are top floor' do
      before { @lift.position = 1 }

      context 'going up' do
        before { @lift.direction = 'up' }

        it { is_expected.to eq(true) }
      end

      context 'going down' do
        before { @lift.direction = 'down' }

        it { is_expected.to eq(false) }
      end
    end

    context 'when people above and nobody below' do
      let (:queues) { [[], [], [0]] }
      let (:capacity) { 5 }

      before do
        @lift.position = 1
      end

      context 'going up' do
        before { @lift.direction = 'up' }

        it { is_expected.to eq(false) }
      end

      context 'going down' do
        before { @lift.direction = 'down' }

        it { is_expected.to eq(true) }
      end
    end

    context 'when people below' do
      context 'going up'
      context 'going down'
    end

    context 'when no queues' do
      context 'going up'
      context 'going down'
    end
  end
end
