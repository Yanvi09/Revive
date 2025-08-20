<?php

// app/Events/AppointmentCreated.php
namespace App\Events;

use App\Models\Appointment;
use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\BroadcastEvent;

class AppointmentCreated
{
    use InteractsWithSockets;

    public $appointment;

    public function __construct(Appointment $appointment)
    {
        $this->appointment = $appointment;
    }

    public function broadcastOn()
    {
        return new Channel('appointments');
    }

    public function broadcastAs()
    {
        return 'appointment.created';
    }
}
