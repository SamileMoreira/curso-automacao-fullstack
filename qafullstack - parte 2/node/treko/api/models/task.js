import mongoose from 'mongoose';

let Task = new mongoose.Schema({
    title: {
        type: String,
        required: [true, 'Ops! Title is required.'],
        unique: true
    },
    owner: {
        type: String,
        required: [true, 'Ops! Owner is required.']
    },
    done: Boolean
});

export default mongoose.model('Task', Task);