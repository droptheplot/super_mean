describe Array do
  describe '#mean' do
    context 'integers' do
      let(:array) { [1, 2, 3] }

      it 'returns arithmetic mean for array of integers' do
        expect(array.mean).to eq(2.0)
      end
    end

    context 'floats' do
      let(:array) { [1.0, 2.0, 3.0] }

      it 'returns arithmetic mean for array of floats' do
        expect(array.mean).to eq(2.0)
      end
    end

    context 'mixed' do
      let(:array) { [1.0, 2, 3] }

      it 'returns arithmetic mean for mixed array' do
        expect(array.mean).to eq(2.0)
      end
    end

    context 'strings' do
      let(:array) { %w(one two three) }

      it 'raises TypeError for array of strings' do
        expect { array.mean }.to raise_error(TypeError)
      end
    end
  end
end
